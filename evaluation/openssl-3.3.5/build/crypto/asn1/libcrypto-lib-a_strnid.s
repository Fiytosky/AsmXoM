	.file	"a_strnid.c"
	.text
	.type	ossl_check_ASN1_STRING_TABLE_type, @function
ossl_check_ASN1_STRING_TABLE_type:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	ossl_check_ASN1_STRING_TABLE_type, .-ossl_check_ASN1_STRING_TABLE_type
	.type	ossl_check_const_ASN1_STRING_TABLE_sk_type, @function
ossl_check_const_ASN1_STRING_TABLE_sk_type:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	ossl_check_const_ASN1_STRING_TABLE_sk_type, .-ossl_check_const_ASN1_STRING_TABLE_sk_type
	.type	ossl_check_ASN1_STRING_TABLE_sk_type, @function
ossl_check_ASN1_STRING_TABLE_sk_type:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ossl_check_ASN1_STRING_TABLE_sk_type, .-ossl_check_ASN1_STRING_TABLE_sk_type
	.type	ossl_check_ASN1_STRING_TABLE_compfunc_type, @function
ossl_check_ASN1_STRING_TABLE_compfunc_type:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	ossl_check_ASN1_STRING_TABLE_compfunc_type, .-ossl_check_ASN1_STRING_TABLE_compfunc_type
	.type	ossl_check_ASN1_STRING_TABLE_freefunc_type, @function
ossl_check_ASN1_STRING_TABLE_freefunc_type:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	ossl_check_ASN1_STRING_TABLE_freefunc_type, .-ossl_check_ASN1_STRING_TABLE_freefunc_type
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
	.local	stable
	.comm	stable,8,8
	.data
	.align 8
	.type	global_mask, @object
	.size	global_mask, 8
global_mask:
	.quad	8192
	.text
	.globl	ASN1_STRING_set_default_mask
	.type	ASN1_STRING_set_default_mask, @function
ASN1_STRING_set_default_mask:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, global_mask(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ASN1_STRING_set_default_mask, .-ASN1_STRING_set_default_mask
	.globl	ASN1_STRING_get_default_mask
	.type	ASN1_STRING_get_default_mask, @function
ASN1_STRING_get_default_mask:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	global_mask(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ASN1_STRING_get_default_mask, .-ASN1_STRING_get_default_mask
	.section	.rodata
.LC0:
	.string	"MASK:"
.LC1:
	.string	"nombstr"
.LC2:
	.string	"pkix"
.LC3:
	.string	"utf8only"
.LC4:
	.string	"default"
	.text
	.globl	ASN1_STRING_set_default_mask_asc
	.type	ASN1_STRING_set_default_mask_asc, @function
ASN1_STRING_set_default_mask_asc:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L19
	addq	$5, -24(%rbp)
	movl	$1, %eax
	jmp	.L20
.L19:
	movl	$0, %eax
.L20:
	testb	%al, %al
	je	.L21
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L22
	movl	$0, %eax
	jmp	.L29
.L22:
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L24
	movl	$0, %eax
	jmp	.L29
.L21:
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	movq	$-10241, -8(%rbp)
	jmp	.L24
.L25:
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L26
	movq	$-5, -8(%rbp)
	jmp	.L24
.L26:
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L27
	movq	$8192, -8(%rbp)
	jmp	.L24
.L27:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$4294967295, %eax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L28:
	movl	$0, %eax
	jmp	.L29
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_set_default_mask@PLT
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ASN1_STRING_set_default_mask_asc, .-ASN1_STRING_set_default_mask_asc
	.globl	ASN1_STRING_set_by_NID
	.type	ASN1_STRING_set_by_NID, @function
ASN1_STRING_set_by_NID:
.LFB163:
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
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L31
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.L31:
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L33
	movq	global_mask(%rip), %rax
	andq	%rax, -8(%rbp)
.L33:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %r9
	movq	-8(%rbp), %r8
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	ASN1_mbstring_ncopy@PLT
	addq	$16, %rsp
	movl	%eax, -12(%rbp)
	jmp	.L34
.L32:
	movq	global_mask(%rip), %rax
	andl	$10246, %eax
	movq	%rax, %rdi
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_mbstring_copy@PLT
	movl	%eax, -12(%rbp)
.L34:
	cmpl	$0, -12(%rbp)
	jg	.L35
	movl	$0, %eax
	jmp	.L37
.L35:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	ASN1_STRING_set_by_NID, .-ASN1_STRING_set_by_NID
	.section	.rodata
	.align 32
	.type	tbl_standard, @object
	.size	tbl_standard, 1120
tbl_standard:
	.long	13
	.zero	4
	.quad	1
	.quad	64
	.quad	10246
	.quad	0
	.long	14
	.zero	4
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.long	15
	.zero	4
	.quad	1
	.quad	128
	.quad	10246
	.quad	0
	.long	16
	.zero	4
	.quad	1
	.quad	128
	.quad	10246
	.quad	0
	.long	17
	.zero	4
	.quad	1
	.quad	64
	.quad	10246
	.quad	0
	.long	18
	.zero	4
	.quad	1
	.quad	64
	.quad	10246
	.quad	0
	.long	48
	.zero	4
	.quad	1
	.quad	128
	.quad	16
	.quad	2
	.long	49
	.zero	4
	.quad	1
	.quad	-1
	.quad	10262
	.quad	0
	.long	54
	.zero	4
	.quad	1
	.quad	-1
	.quad	10262
	.quad	0
	.long	55
	.zero	4
	.quad	1
	.quad	-1
	.quad	10246
	.quad	0
	.long	99
	.zero	4
	.quad	1
	.quad	32768
	.quad	10246
	.quad	0
	.long	100
	.zero	4
	.quad	1
	.quad	32768
	.quad	10246
	.quad	0
	.long	101
	.zero	4
	.quad	1
	.quad	32768
	.quad	10246
	.quad	0
	.long	105
	.zero	4
	.quad	1
	.quad	64
	.quad	2
	.quad	2
	.long	156
	.zero	4
	.quad	-1
	.quad	-1
	.quad	2048
	.quad	2
	.long	173
	.zero	4
	.quad	1
	.quad	32768
	.quad	10246
	.quad	0
	.long	174
	.zero	4
	.quad	-1
	.quad	-1
	.quad	2
	.quad	2
	.long	391
	.zero	4
	.quad	1
	.quad	-1
	.quad	16
	.quad	2
	.long	417
	.zero	4
	.quad	-1
	.quad	-1
	.quad	2048
	.quad	2
	.long	460
	.zero	4
	.quad	1
	.quad	256
	.quad	16
	.quad	2
	.long	957
	.zero	4
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.long	1004
	.zero	4
	.quad	1
	.quad	12
	.quad	1
	.quad	2
	.long	1005
	.zero	4
	.quad	1
	.quad	13
	.quad	1
	.quad	2
	.long	1006
	.zero	4
	.quad	1
	.quad	11
	.quad	1
	.quad	2
	.long	1090
	.zero	4
	.quad	3
	.quad	3
	.quad	2
	.quad	2
	.long	1091
	.zero	4
	.quad	3
	.quad	3
	.quad	1
	.quad	2
	.long	1092
	.zero	4
	.quad	0
	.quad	-1
	.quad	8192
	.quad	2
	.long	1208
	.zero	4
	.quad	1
	.quad	128
	.quad	8192
	.quad	2
	.text
	.type	sk_table_cmp, @function
sk_table_cmp:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	sk_table_cmp, .-sk_table_cmp
	.type	table_cmp, @function
table_cmp:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	table_cmp, .-table_cmp
	.type	table_cmp_BSEARCH_CMP_FN, @function
table_cmp_BSEARCH_CMP_FN:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	table_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	table_cmp_BSEARCH_CMP_FN, .-table_cmp_BSEARCH_CMP_FN
	.type	OBJ_bsearch_table, @function
OBJ_bsearch_table:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	table_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$40, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	OBJ_bsearch_table, .-OBJ_bsearch_table
	.globl	ASN1_STRING_TABLE_get
	.type	ASN1_STRING_TABLE_get, @function
ASN1_STRING_TABLE_get:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movl	$0, %esi
	movl	$64, %edi
	call	OPENSSL_init_crypto@PLT
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	stable(%rip), %rax
	testq	%rax, %rax
	je	.L47
	movq	stable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_TABLE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_TABLE_type
	movq	%rax, %rbx
	movq	stable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_TABLE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L47
	movq	stable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_STRING_TABLE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	jmp	.L49
.L47:
	leaq	tbl_standard(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_bsearch_table
.L49:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	ASN1_STRING_TABLE_get, .-ASN1_STRING_TABLE_get
	.section	.rodata
.LC5:
	.string	"../crypto/asn1/a_strnid.c"
	.text
	.type	stable_get, @function
stable_get:
.LFB169:
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
	movq	stable(%rip), %rax
	testq	%rax, %rax
	jne	.L51
	leaq	sk_table_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_TABLE_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, stable(%rip)
	movq	stable(%rip), %rax
	testq	%rax, %rax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L53
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L53
	movq	-24(%rbp), %rax
	jmp	.L52
.L53:
	leaq	.LC5(%rip), %rax
	movl	$166, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L52
.L54:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_TABLE_type
	movq	%rax, %rbx
	movq	stable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_TABLE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L55
	leaq	.LC5(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$169, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L52
.L55:
	cmpq	$0, -24(%rbp)
	je	.L56
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	orq	$1, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L57
.L56:
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$1, 32(%rax)
.L57:
	movq	-32(%rbp), %rax
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	stable_get, .-stable_get
	.globl	ASN1_STRING_TABLE_add
	.type	ASN1_STRING_TABLE_add, @function
ASN1_STRING_TABLE_add:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	stable_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L59:
	cmpq	$0, -32(%rbp)
	js	.L61
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L61:
	cmpq	$0, -40(%rbp)
	js	.L62
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L62:
	cmpq	$0, -48(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L63:
	cmpq	$0, -56(%rbp)
	je	.L64
	movq	-56(%rbp), %rax
	orq	$1, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
.L64:
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	ASN1_STRING_TABLE_add, .-ASN1_STRING_TABLE_add
	.globl	ASN1_STRING_TABLE_cleanup
	.type	ASN1_STRING_TABLE_cleanup, @function
ASN1_STRING_TABLE_cleanup:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	stable(%rip), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	$0, stable(%rip)
	leaq	st_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_TABLE_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_TABLE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	jmp	.L65
.L68:
	nop
.L65:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	ASN1_STRING_TABLE_cleanup, .-ASN1_STRING_TABLE_cleanup
	.type	st_free, @function
st_free:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L71
	leaq	.LC5(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$223, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L71:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	st_free, .-st_free
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"ASN1_STRING_TABLE_add"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
