	.file	"asn1_time_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"210328005959Z"
.LC1:
	.string	"210328010000Z"
.LC2:
	.string	"20210328015959+0100"
.LC3:
	.string	"20210328030000+0200"
.LC4:
	.string	"INVALID"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	asn1_to_utc, @object
	.size	asn1_to_utc, 80
asn1_to_utc:
	.quad	.LC0
	.quad	1616893199
	.quad	.LC1
	.quad	1616893200
	.quad	.LC2
	.quad	1616893199
	.quad	.LC3
	.quad	1616893200
	.quad	.LC4
	.quad	-1
	.section	.rodata
.LC5:
	.string	"0"
.LC6:
	.string	"ABCD"
.LC7:
	.string	"0ABCD"
.LC8:
	.string	"1-700101000000Z"
.LC9:
	.string	"`9700101000000Z"
.LC10:
	.string	"19700101000000Z"
.LC11:
	.string	"A00101000000Z"
.LC12:
	.string	"A9700101000000Z"
.LC13:
	.string	"1A700101000000Z"
.LC14:
	.string	"19A00101000000Z"
.LC15:
	.string	"197A0101000000Z"
.LC16:
	.string	"1970A101000000Z"
.LC17:
	.string	"19700A01000000Z"
.LC18:
	.string	"197001A1000000Z"
.LC19:
	.string	"1970010A000000Z"
.LC20:
	.string	"19700101A00000Z"
.LC21:
	.string	"197001010A0000Z"
.LC22:
	.string	"1970010100A000Z"
.LC23:
	.string	"19700101000A00Z"
.LC24:
	.string	"197001010000A0Z"
.LC25:
	.string	"1970010100000AZ"
.LC26:
	.string	"700101000000X"
.LC27:
	.string	"19700101000000X"
.LC28:
	.string	"209912312359Z"
.LC29:
	.string	"199912310000Z"
.LC30:
	.string	"9912312359Z"
.LC31:
	.string	"9912310000Z"
.LC32:
	.string	"700101000000Z"
.LC33:
	.string	"20380119031407Z"
.LC34:
	.string	"380119031407Z"
.LC35:
	.string	"20371231235959Z"
.LC36:
	.string	"371231235959Z"
.LC37:
	.string	"19701006121456Z"
.LC38:
	.string	"701006121456Z"
.LC39:
	.string	"19991231000000Z"
.LC40:
	.string	"991231000000Z"
.LC41:
	.string	"9912310000+0000"
.LC42:
	.string	"199912310000+0000"
.LC43:
	.string	"9912310000-0000"
.LC44:
	.string	"199912310000-0000"
.LC45:
	.string	"199912310100+0100"
.LC46:
	.string	"199912302300-0100"
.LC47:
	.string	"199912302300-A000"
.LC48:
	.string	"199912302300-0A00"
.LC49:
	.string	"9912310100+0100"
.LC50:
	.string	"9912302300-0100"
	.section	.data.rel.local,"aw"
	.align 32
	.type	tbl_testdata_pos, @object
	.size	tbl_testdata_pos, 1920
tbl_testdata_pos:
	.quad	.LC5
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC6
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC7
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC8
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC9
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC10
	.long	23
	.long	23
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC11
	.long	23
	.long	23
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC12
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC13
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC14
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC15
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC16
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC17
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC18
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC19
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC20
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC21
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC22
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC23
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC24
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC25
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC26
	.long	23
	.long	23
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC27
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC28
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC29
	.long	24
	.long	24
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC30
	.long	23
	.long	23
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC31
	.long	23
	.long	23
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	0
	.quad	.LC10
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	0
	.long	-1
	.long	1
	.quad	.LC32
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	0
	.long	-1
	.long	1
	.quad	.LC33
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	2147483647
	.long	1
	.long	1
	.quad	.LC34
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	2147483647
	.long	1
	.long	1
	.quad	.LC35
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	2145916799
	.long	1
	.long	1
	.quad	.LC35
	.long	23
	.long	23
	.long	0
	.zero	4
	.quad	0
	.long	0
	.long	1
	.quad	.LC36
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	2145916799
	.long	1
	.long	1
	.quad	.LC37
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	24063296
	.long	-1
	.long	1
	.quad	.LC38
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	24063296
	.long	-1
	.long	1
	.quad	.LC39
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC40
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC41
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC42
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC43
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC44
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC45
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC46
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC47
	.long	24
	.long	23
	.long	0
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC48
	.long	24
	.long	23
	.long	0
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC49
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.quad	.LC50
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	946598400
	.long	0
	.long	1
	.section	.rodata
.LC51:
	.string	"19011213204552Z"
.LC52:
	.string	"691006121456Z"
.LC53:
	.string	"19691006121456Z"
	.section	.data.rel.local
	.align 32
	.type	tbl_testdata_neg, @object
	.size	tbl_testdata_neg, 120
tbl_testdata_neg:
	.quad	.LC51
	.long	24
	.long	24
	.long	1
	.zero	4
	.quad	-2147483648
	.long	-1
	.long	0
	.quad	.LC52
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	-7472704
	.long	-1
	.long	1
	.quad	.LC53
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	-7472704
	.long	-1
	.long	1
	.section	.rodata
.LC54:
	.string	"20380119031408Z"
.LC55:
	.string	"20380119031409Z"
.LC56:
	.string	"380119031408Z"
.LC57:
	.string	"20500101120000Z"
	.section	.data.rel.local
	.align 32
	.type	tbl_testdata_pos_64bit, @object
	.size	tbl_testdata_pos_64bit, 160
tbl_testdata_pos_64bit:
	.quad	.LC54
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	2147483648
	.long	1
	.long	1
	.quad	.LC55
	.long	24
	.long	23
	.long	1
	.zero	4
	.quad	2147483649
	.long	1
	.long	1
	.quad	.LC56
	.long	23
	.long	23
	.long	1
	.zero	4
	.quad	2147483648
	.long	1
	.long	1
	.quad	.LC57
	.long	24
	.long	24
	.long	1
	.zero	4
	.quad	2524651200
	.long	1
	.long	0
	.section	.rodata
.LC58:
	.string	"19011213204551Z"
.LC59:
	.string	"19000101120000Z"
	.section	.data.rel.local
	.align 32
	.type	tbl_testdata_neg_64bit, @object
	.size	tbl_testdata_neg_64bit, 80
tbl_testdata_neg_64bit:
	.quad	.LC58
	.long	24
	.long	24
	.long	1
	.zero	4
	.quad	-2147483649
	.long	-1
	.long	0
	.quad	.LC59
	.long	24
	.long	24
	.long	1
	.zero	4
	.quad	-2208945600
	.long	-1
	.long	0
	.align 16
	.type	gtime, @object
	.size	gtime, 24
gtime:
	.long	15
	.long	24
	.quad	.LC39
	.quad	0
	.data
	.align 8
	.type	gtime_t, @object
	.size	gtime_t, 8
gtime_t:
	.quad	946598400
	.section	.rodata
.LC60:
	.string	"td->check_result"
.LC61:
	.string	"ASN1_TIME_check(&atime)"
.LC62:
	.string	"../test/asn1_time_test.c"
	.align 8
.LC63:
	.string	"ASN1_TIME_check(%s) unexpected result"
	.align 8
.LC64:
	.string	"ASN1_TIME_cmp_time_t(&atime, td->t)"
	.align 8
.LC65:
	.string	"ASN1_TIME_cmp_time_t(%s vs %ld) compare failed"
	.align 8
.LC66:
	.string	"ASN1_TIME_diff(&day, &sec, &atime, &atime)"
	.align 8
.LC67:
	.string	"ASN1_TIME_diff(%s) to self failed"
.LC68:
	.string	"day"
.LC69:
	.string	"sec"
	.align 8
.LC70:
	.string	"ASN1_TIME_diff(%s) to self not equal"
	.align 8
.LC71:
	.string	"ASN1_TIME_diff(&day, &sec, &gtime, &atime)"
	.align 8
.LC72:
	.string	"ASN1_TIME_diff(%s) to baseline failed"
.LC73:
	.string	"(day == 0 && sec == 0)"
.LC74:
	.string	"(day < 0 || sec < 0)"
.LC75:
	.string	"(day > 0 || sec > 0)"
	.align 8
.LC76:
	.string	"ASN1_TIME_diff(%s) to baseline bad comparison"
.LC77:
	.string	"td->cmp_result"
	.align 8
.LC78:
	.string	"ASN1_TIME_cmp_time_t(&atime, gtime_t)"
	.align 8
.LC79:
	.string	"ASN1_TIME_cmp_time_t(%s) to baseline bad comparison"
.LC80:
	.string	"ptime"
.LC81:
	.string	"ASN1_TIME_set(%ld) failed"
	.align 8
.LC82:
	.string	"ASN1_TIME_cmp_time_t(ptime, td->t)"
	.align 8
.LC83:
	.string	"ASN1_TIME_set(%ld) compare failed (%s->%s)"
.LC84:
	.string	"td->expected_type"
.LC85:
	.string	"ptime->type"
	.align 8
.LC86:
	.string	"ASN1_TIME_set(%ld) unexpected type"
.LC87:
	.string	"ASN1_TIME_set() = %*s"
.LC88:
	.string	"ASN1_TIME_new() failed"
	.align 8
.LC89:
	.string	"ASN1_TIME_set_string(ptime, td->data)"
	.align 8
.LC90:
	.string	"ASN1_TIME_set_string_gmt(%s) failed"
.LC91:
	.string	"ASN1_TIME_normalize(ptime)"
	.align 8
.LC92:
	.string	"ASN1_TIME_normalize(%s) failed"
	.align 8
.LC93:
	.string	"ASN1_TIME_set_string_gmt(%s) unexpected type"
	.align 8
.LC94:
	.string	"ASN1_TIME_diff(&day, &sec, ptime, &atime)"
	.align 8
.LC95:
	.string	"ASN1_TIME_diff(day=%d, sec=%d, %s) after ASN1_TIME_set_string_gmt() failed"
	.align 8
.LC96:
	.string	"ASN1_TIME_cmp_time_t(ptime, gtime_t)"
	.align 8
.LC97:
	.string	"ASN1_TIME_cmp_time_t(%s) after ASN1_TIME_set_string_gnt() to baseline bad comparison"
	.align 8
.LC98:
	.string	"ASN1_TIME_set_string_gmt() = %*s"
	.align 8
.LC99:
	.string	"ASN1_TIME_set_string(%s) failed"
	.align 8
.LC100:
	.string	"ASN1_TIME_diff(day=%d, sec=%d, %s) after ASN1_TIME_set_string() failed"
	.align 8
.LC101:
	.string	"ASN1_TIME_cmp_time_t(%s) after ASN1_TIME_set_string() to baseline bad comparison"
.LC102:
	.string	"ASN1_TIME_set_string() = %*s"
	.align 8
.LC103:
	.string	"ASN1_TIME_to_generalizedtime(%s) failed"
	.align 8
.LC104:
	.string	"ASN1_TIME_to_generalizedtime(%s) should have failed"
	.align 8
.LC105:
	.string	"ASN1_TIME_to_generalizedtime(%s->%s) bad result"
.LC106:
	.string	"atime=%s"
	.text
	.type	test_table, @function
test_table:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	$0, -20(%rbp)
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	$0, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %ebx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_check@PLT
	movl	%eax, %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$174, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L2
	movq	-72(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$175, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
.L2:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L3
	movl	$1, %eax
	jmp	.L49
.L3:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_cmp_time_t@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$181, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$182, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
.L5:
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-84(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movl	%eax, %ecx
	movl	$186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L6
	movq	-72(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$187, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
.L6:
	movl	-84(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$190, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L7
	movl	-88(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$190, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L8
.L7:
	movq	-72(%rbp), %rax
	leaq	.LC70(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$191, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
.L8:
	leaq	-80(%rbp), %rdx
	leaq	gtime(%rip), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-84(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movl	%eax, %ecx
	movl	$195, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L9
	movq	-72(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$196, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	jmp	.L10
.L9:
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L11
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	jne	.L12
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jne	.L12
	movl	$1, %ecx
	jmp	.L13
.L12:
	movl	$0, %ecx
.L13:
	leaq	.LC73(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L10
.L11:
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$-1, %eax
	jne	.L14
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	js	.L15
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jns	.L16
.L15:
	movl	$1, %ecx
	jmp	.L17
.L16:
	movl	$0, %ecx
.L17:
	leaq	.LC74(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L10
.L14:
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L18
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	jg	.L19
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jle	.L20
.L19:
	movl	$1, %ecx
	jmp	.L21
.L20:
	movl	$0, %ecx
.L21:
	leaq	.LC75(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L10
.L18:
	movq	-72(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$201, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
.L10:
	movq	-40(%rbp), %rax
	movl	32(%rax), %ebx
	movq	gtime_t(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_cmp_time_t@PLT
	movl	%eax, %esi
	leaq	.LC77(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L22
	movq	-72(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$206, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
.L22:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$211, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L23
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$212, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	jmp	.L24
.L23:
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_cmp_time_t@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$216, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$217, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L25:
	movq	-40(%rbp), %rax
	movl	12(%rax), %edi
	movq	-48(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.LC84(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$221, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$222, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L26:
	cmpl	$0, -24(%rbp)
	je	.L27
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$226, %esi
	movl	$0, %eax
	call	test_info@PLT
.L27:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
.L24:
	call	ASN1_TIME_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$231, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L28
	leaq	.LC88(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	jmp	.L29
.L28:
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_set_string@PLT
	movl	%eax, %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC89(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L30
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC90(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$237, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L30:
	movq	-40(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_normalize@PLT
	movl	%eax, %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$240, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC92(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$241, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L31:
	movq	-40(%rbp), %rax
	movl	12(%rax), %edi
	movq	-48(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.LC84(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$244, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L32
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC93(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$245, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L32:
	movl	$0, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -84(%rbp)
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-84(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movl	%eax, %ecx
	movl	$249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	movl	-84(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$249, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L33
	movl	-88(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$249, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L34
.L33:
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movl	-88(%rbp), %ecx
	movl	-84(%rbp), %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$250, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L34:
	movq	-40(%rbp), %rax
	movl	32(%rax), %ebx
	movq	gtime_t(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_cmp_time_t@PLT
	movl	%eax, %esi
	leaq	.LC77(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$253, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L35
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$254, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L35:
	cmpl	$0, -28(%rbp)
	je	.L36
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC98(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$258, %esi
	movl	$0, %eax
	call	test_info@PLT
.L36:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
.L29:
	call	ASN1_TIME_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$263, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L37
	leaq	.LC88(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$264, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	jmp	.L38
.L37:
	movl	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_set_string@PLT
	movl	%eax, %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC89(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L39
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$269, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.L39:
	movl	$0, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -84(%rbp)
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-84(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movl	%eax, %ecx
	movl	$273, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movl	-84(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L40
	movl	-88(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L41
.L40:
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movl	-88(%rbp), %ecx
	movl	-84(%rbp), %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$274, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.L41:
	movq	-40(%rbp), %rax
	movl	32(%rax), %ebx
	movq	gtime_t(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_cmp_time_t@PLT
	movl	%eax, %esi
	leaq	.LC77(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$277, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L42
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC101(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$278, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.L42:
	cmpl	$0, -32(%rbp)
	je	.L43
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$282, %esi
	movl	$0, %eax
	call	test_info@PLT
.L43:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
.L38:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$23, %eax
	jne	.L44
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_TIME_to_generalizedtime@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$1, %eax
	jne	.L45
	movq	-48(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$288, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-72(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$289, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	jmp	.L46
.L45:
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L46
	movq	-48(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$291, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L46
	movq	-72(%rbp), %rax
	leaq	.LC104(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$292, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
.L46:
	cmpq	$0, -48(%rbp)
	je	.L47
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_cmp_time_t@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$295, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	.LC105(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$296, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
.L47:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
.L44:
	cmpl	$0, -20(%rbp)
	je	.L48
	movq	-72(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rax, %rcx
	movl	$304, %esi
	movl	$0, %eax
	call	test_error@PLT
.L48:
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
.L49:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	test_table, .-test_table
	.type	test_table_pos, @function
test_table_pos:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	tbl_testdata_pos(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	test_table
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	test_table_pos, .-test_table_pos
	.type	test_table_neg, @function
test_table_neg:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	tbl_testdata_neg(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	test_table
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	test_table_neg, .-test_table_neg
	.type	test_table_pos_64bit, @function
test_table_pos_64bit:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	tbl_testdata_pos_64bit(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	test_table
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	test_table_pos_64bit, .-test_table_pos_64bit
	.type	test_table_neg_64bit, @function
test_table_neg_64bit:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	tbl_testdata_neg_64bit(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	test_table
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_table_neg_64bit, .-test_table_neg_64bit
	.data
	.align 16
	.type	TODAY_GEN_STR, @object
	.size	TODAY_GEN_STR, 16
TODAY_GEN_STR:
	.string	"20170825000000Z"
	.align 16
	.type	TOMORROW_GEN_STR, @object
	.size	TOMORROW_GEN_STR, 16
TOMORROW_GEN_STR:
	.string	"20170826000000Z"
	.align 8
	.type	TODAY_UTC_STR, @object
	.size	TODAY_UTC_STR, 14
TODAY_UTC_STR:
	.string	"170825000000Z"
	.align 8
	.type	TOMORROW_UTC_STR, @object
	.size	TOMORROW_UTC_STR, 14
TOMORROW_UTC_STR:
	.string	"170826000000Z"
	.section	.data.rel.local
	.align 32
	.type	tbl_compare_testdata, @object
	.size	tbl_compare_testdata, 896
tbl_compare_testdata:
	.long	15
	.long	24
	.quad	TODAY_GEN_STR
	.quad	0
	.long	15
	.long	24
	.quad	TODAY_GEN_STR
	.quad	0
	.long	0
	.zero	4
	.long	15
	.long	24
	.quad	TODAY_GEN_STR
	.quad	0
	.long	13
	.long	23
	.quad	TODAY_UTC_STR
	.quad	0
	.long	0
	.zero	4
	.long	15
	.long	24
	.quad	TODAY_GEN_STR
	.quad	0
	.long	15
	.long	24
	.quad	TOMORROW_GEN_STR
	.quad	0
	.long	-1
	.zero	4
	.long	15
	.long	24
	.quad	TODAY_GEN_STR
	.quad	0
	.long	13
	.long	23
	.quad	TOMORROW_UTC_STR
	.quad	0
	.long	-1
	.zero	4
	.long	13
	.long	23
	.quad	TODAY_UTC_STR
	.quad	0
	.long	15
	.long	24
	.quad	TODAY_GEN_STR
	.quad	0
	.long	0
	.zero	4
	.long	13
	.long	23
	.quad	TODAY_UTC_STR
	.quad	0
	.long	13
	.long	23
	.quad	TODAY_UTC_STR
	.quad	0
	.long	0
	.zero	4
	.long	13
	.long	23
	.quad	TODAY_UTC_STR
	.quad	0
	.long	15
	.long	24
	.quad	TOMORROW_GEN_STR
	.quad	0
	.long	-1
	.zero	4
	.long	13
	.long	23
	.quad	TODAY_UTC_STR
	.quad	0
	.long	13
	.long	23
	.quad	TOMORROW_UTC_STR
	.quad	0
	.long	-1
	.zero	4
	.long	15
	.long	24
	.quad	TOMORROW_GEN_STR
	.quad	0
	.long	15
	.long	24
	.quad	TODAY_GEN_STR
	.quad	0
	.long	1
	.zero	4
	.long	15
	.long	24
	.quad	TOMORROW_GEN_STR
	.quad	0
	.long	13
	.long	23
	.quad	TODAY_UTC_STR
	.quad	0
	.long	1
	.zero	4
	.long	15
	.long	24
	.quad	TOMORROW_GEN_STR
	.quad	0
	.long	15
	.long	24
	.quad	TOMORROW_GEN_STR
	.quad	0
	.long	0
	.zero	4
	.long	15
	.long	24
	.quad	TOMORROW_GEN_STR
	.quad	0
	.long	13
	.long	23
	.quad	TOMORROW_UTC_STR
	.quad	0
	.long	0
	.zero	4
	.long	13
	.long	23
	.quad	TOMORROW_UTC_STR
	.quad	0
	.long	15
	.long	24
	.quad	TODAY_GEN_STR
	.quad	0
	.long	1
	.zero	4
	.long	13
	.long	23
	.quad	TOMORROW_UTC_STR
	.quad	0
	.long	13
	.long	23
	.quad	TODAY_UTC_STR
	.quad	0
	.long	1
	.zero	4
	.long	13
	.long	23
	.quad	TOMORROW_UTC_STR
	.quad	0
	.long	15
	.long	24
	.quad	TOMORROW_GEN_STR
	.quad	0
	.long	0
	.zero	4
	.long	13
	.long	23
	.quad	TOMORROW_UTC_STR
	.quad	0
	.long	13
	.long	23
	.quad	TOMORROW_UTC_STR
	.quad	0
	.long	0
	.zero	4
	.section	.rodata
.LC107:
	.string	"td->result"
	.align 8
.LC108:
	.string	"ASN1_TIME_compare(&td->t1, &td->t2)"
	.text
	.type	test_table_compare, @function
test_table_compare:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	leaq	tbl_compare_testdata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ebx
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	movl	%eax, %esi
	leaq	.LC107(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$371, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	test_table_compare, .-test_table_compare
	.section	.rodata
.LC109:
	.string	"Internal error."
.LC110:
	.string	"NULL"
.LC111:
	.string	"asn1_time_dup"
.LC112:
	.string	"ASN1_TIME_dup() failed."
	.align 8
.LC113:
	.string	"ASN1_TIME_compare(asn1_time, asn1_time_dup)"
	.align 8
.LC114:
	.string	"ASN1_TIME_dup() duplicated non-identical value."
.LC115:
	.string	"ASN1_UTCTIME_dup() failed."
	.align 8
.LC116:
	.string	"ASN1_UTCTIME_dup() duplicated non-identical UTCTIME value."
	.align 8
.LC117:
	.string	"ASN1_GENERALIZEDTIME_dup() failed."
	.align 8
.LC118:
	.string	"ASN1_TIME_compare(asn1_gentime, asn1_time_dup)"
	.align 8
.LC119:
	.string	"ASN1_GENERALIZEDTIME_dup() dup'ed non-identical value."
	.text
	.type	test_time_dup, @function
test_time_dup:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_adj@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L61
	leaq	.LC109(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$383, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L61:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_TIME_to_generalizedtime@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L63
	leaq	.LC109(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L63:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC110(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$394, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	jne	.L64
	leaq	.LC112(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$395, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L64:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$398, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L65
	leaq	.LC114(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L65:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTCTIME_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC110(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$405, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	jne	.L66
	leaq	.LC115(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$406, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L66:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$409, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L67
	leaq	.LC116(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$410, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L67:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC110(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$416, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	jne	.L68
	leaq	.LC117(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$417, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L68:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$420, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L69
	leaq	.LC119(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$421, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L69:
	movl	$1, -4(%rbp)
.L62:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_time_dup, .-test_time_dup
	.section	.rodata
.LC120:
	.string	"asn1_to_utc[idx].expected"
.LC121:
	.string	"testdateutc"
	.align 8
.LC122:
	.string	"ossl_asn1_string_to_time_t (%s) failed: expected %lli, got %lli\n"
	.text
	.type	convert_asn1_to_time_t, @function
convert_asn1_to_time_t:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	asn1_to_utc(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	ossl_asn1_string_to_time_t@PLT
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+asn1_to_utc(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC120(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$439, %esi
	movq	%rax, %rdi
	call	test_time_t_eq@PLT
	testl	%eax, %eax
	jne	.L72
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+asn1_to_utc(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	asn1_to_utc(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-8(%rbp), %rsi
	leaq	.LC122(%rip), %rdx
	leaq	.LC62(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$440, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L73
.L72:
	movl	$1, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	convert_asn1_to_time_t, .-convert_asn1_to_time_t
	.type	convert_tm_to_asn1_time, @function
convert_tm_to_asn1_time:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movabsq	$67768011791126057, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	convert_tm_to_asn1_time, .-convert_tm_to_asn1_time
	.section	.rodata
.LC123:
	.string	"test_table_pos"
	.align 8
.LC124:
	.string	"Adding negative-sign time_t tests"
.LC125:
	.string	"test_table_neg"
.LC126:
	.string	"Adding 64-bit time_t tests"
.LC127:
	.string	"test_table_pos_64bit"
	.align 8
.LC128:
	.string	"Adding negative-sign 64-bit time_t tests"
.LC129:
	.string	"test_table_neg_64bit"
.LC130:
	.string	"test_table_compare"
.LC131:
	.string	"test_time_dup"
.LC132:
	.string	"convert_asn1_to_time_t"
.LC133:
	.string	"convert_tm_to_asn1_time"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$-1, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -8(%rbp)
	leaq	test_table_pos(%rip), %rsi
	leaq	.LC123(%rip), %rax
	movl	$1, %ecx
	movl	$48, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jg	.L77
	cmpq	$0, -8(%rbp)
	je	.L77
	leaq	.LC124(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$493, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	test_table_neg(%rip), %rsi
	leaq	.LC125(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
.L77:
	leaq	.LC126(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$497, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	test_table_pos_64bit(%rip), %rsi
	leaq	.LC127(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jg	.L78
	cmpq	$0, -8(%rbp)
	je	.L78
	leaq	.LC128(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movl	$501, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	test_table_neg_64bit(%rip), %rsi
	leaq	.LC129(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
.L78:
	leaq	test_table_compare(%rip), %rsi
	leaq	.LC130(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_time_dup(%rip), %rdx
	leaq	.LC131(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	convert_asn1_to_time_t(%rip), %rsi
	leaq	.LC132(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	convert_tm_to_asn1_time(%rip), %rdx
	leaq	.LC133(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
