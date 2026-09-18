	.file	"x_name.c"
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
	.type	ossl_check_const_ASN1_VALUE_sk_type, @function
ossl_check_const_ASN1_VALUE_sk_type:
.LFB161:
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
.LFE161:
	.size	ossl_check_const_ASN1_VALUE_sk_type, .-ossl_check_const_ASN1_VALUE_sk_type
	.type	ossl_check_X509_NAME_ENTRY_type, @function
ossl_check_X509_NAME_ENTRY_type:
.LFB432:
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
.LFE432:
	.size	ossl_check_X509_NAME_ENTRY_type, .-ossl_check_X509_NAME_ENTRY_type
	.type	ossl_check_const_X509_NAME_ENTRY_sk_type, @function
ossl_check_const_X509_NAME_ENTRY_sk_type:
.LFB433:
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
.LFE433:
	.size	ossl_check_const_X509_NAME_ENTRY_sk_type, .-ossl_check_const_X509_NAME_ENTRY_sk_type
	.type	ossl_check_X509_NAME_ENTRY_sk_type, @function
ossl_check_X509_NAME_ENTRY_sk_type:
.LFB434:
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
.LFE434:
	.size	ossl_check_X509_NAME_ENTRY_sk_type, .-ossl_check_X509_NAME_ENTRY_sk_type
	.type	ossl_check_X509_NAME_ENTRY_freefunc_type, @function
ossl_check_X509_NAME_ENTRY_freefunc_type:
.LFB437:
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
.LFE437:
	.size	ossl_check_X509_NAME_ENTRY_freefunc_type, .-ossl_check_X509_NAME_ENTRY_freefunc_type
	.type	sk_STACK_OF_X509_NAME_ENTRY_num, @function
sk_STACK_OF_X509_NAME_ENTRY_num:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	sk_STACK_OF_X509_NAME_ENTRY_num, .-sk_STACK_OF_X509_NAME_ENTRY_num
	.type	sk_STACK_OF_X509_NAME_ENTRY_value, @function
sk_STACK_OF_X509_NAME_ENTRY_value:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	sk_STACK_OF_X509_NAME_ENTRY_value, .-sk_STACK_OF_X509_NAME_ENTRY_value
	.type	sk_STACK_OF_X509_NAME_ENTRY_new_null, @function
sk_STACK_OF_X509_NAME_ENTRY_new_null:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	sk_STACK_OF_X509_NAME_ENTRY_new_null, .-sk_STACK_OF_X509_NAME_ENTRY_new_null
	.type	sk_STACK_OF_X509_NAME_ENTRY_push, @function
sk_STACK_OF_X509_NAME_ENTRY_push:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	sk_STACK_OF_X509_NAME_ENTRY_push, .-sk_STACK_OF_X509_NAME_ENTRY_push
	.type	sk_STACK_OF_X509_NAME_ENTRY_pop_free, @function
sk_STACK_OF_X509_NAME_ENTRY_pop_free:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	sk_STACK_OF_X509_NAME_ENTRY_pop_free, .-sk_STACK_OF_X509_NAME_ENTRY_pop_free
	.section	.rodata
.LC0:
	.string	"object"
.LC1:
	.string	"value"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_NAME_ENTRY_seq_tt, @object
	.size	X509_NAME_ENTRY_seq_tt, 80
X509_NAME_ENTRY_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_PRINTABLE_it
	.text
	.globl	X509_NAME_ENTRY_it
	.type	X509_NAME_ENTRY_it, @function
X509_NAME_ENTRY_it:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	X509_NAME_ENTRY_it, .-X509_NAME_ENTRY_it
	.globl	d2i_X509_NAME_ENTRY
	.type	d2i_X509_NAME_ENTRY, @function
d2i_X509_NAME_ENTRY:
.LFB621:
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
	call	X509_NAME_ENTRY_it@PLT
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
.LFE621:
	.size	d2i_X509_NAME_ENTRY, .-d2i_X509_NAME_ENTRY
	.globl	i2d_X509_NAME_ENTRY
	.type	i2d_X509_NAME_ENTRY, @function
i2d_X509_NAME_ENTRY:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_NAME_ENTRY_it@PLT
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
.LFE622:
	.size	i2d_X509_NAME_ENTRY, .-i2d_X509_NAME_ENTRY
	.globl	X509_NAME_ENTRY_new
	.type	X509_NAME_ENTRY_new, @function
X509_NAME_ENTRY_new:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_NAME_ENTRY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	X509_NAME_ENTRY_new, .-X509_NAME_ENTRY_new
	.globl	X509_NAME_ENTRY_free
	.type	X509_NAME_ENTRY_free, @function
X509_NAME_ENTRY_free:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_NAME_ENTRY_it@PLT
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
.LFE624:
	.size	X509_NAME_ENTRY_free, .-X509_NAME_ENTRY_free
	.globl	X509_NAME_ENTRY_dup
	.type	X509_NAME_ENTRY_dup, @function
X509_NAME_ENTRY_dup:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_NAME_ENTRY_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	X509_NAME_ENTRY_dup, .-X509_NAME_ENTRY_dup
	.section	.rodata
.LC2:
	.string	"RDNS"
	.section	.data.rel.ro
	.align 32
	.type	X509_NAME_ENTRIES_item_tt, @object
	.size	X509_NAME_ENTRIES_item_tt, 40
X509_NAME_ENTRIES_item_tt:
	.quad	2
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	X509_NAME_ENTRY_it
	.text
	.type	X509_NAME_ENTRIES_it, @function
X509_NAME_ENTRIES_it:
.LFB626:
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
.LFE626:
	.size	X509_NAME_ENTRIES_it, .-X509_NAME_ENTRIES_it
	.section	.rodata
.LC3:
	.string	"Name"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	X509_NAME_INTERNAL_item_tt, @object
	.size	X509_NAME_INTERNAL_item_tt, 40
X509_NAME_INTERNAL_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	X509_NAME_ENTRIES_it
	.text
	.type	X509_NAME_INTERNAL_it, @function
X509_NAME_INTERNAL_it:
.LFB627:
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
.LFE627:
	.size	X509_NAME_INTERNAL_it, .-X509_NAME_INTERNAL_it
	.section	.data.rel.ro.local
	.align 32
	.type	x509_name_ff, @object
	.size	x509_name_ff, 72
x509_name_ff:
	.quad	0
	.quad	x509_name_ex_new
	.quad	x509_name_ex_free
	.quad	0
	.quad	x509_name_ex_d2i
	.quad	x509_name_ex_i2d
	.quad	x509_name_ex_print
	.zero	16
	.text
	.globl	X509_NAME_it
	.type	X509_NAME_it, @function
X509_NAME_it:
.LFB628:
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
.LFE628:
	.size	X509_NAME_it, .-X509_NAME_it
	.globl	d2i_X509_NAME
	.type	d2i_X509_NAME, @function
d2i_X509_NAME:
.LFB629:
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
	call	X509_NAME_it@PLT
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
.LFE629:
	.size	d2i_X509_NAME, .-d2i_X509_NAME
	.globl	i2d_X509_NAME
	.type	i2d_X509_NAME, @function
i2d_X509_NAME:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_NAME_it@PLT
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
.LFE630:
	.size	i2d_X509_NAME, .-i2d_X509_NAME
	.globl	X509_NAME_new
	.type	X509_NAME_new, @function
X509_NAME_new:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_NAME_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	X509_NAME_new, .-X509_NAME_new
	.globl	X509_NAME_free
	.type	X509_NAME_free, @function
X509_NAME_free:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_NAME_it@PLT
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
.LFE632:
	.size	X509_NAME_free, .-X509_NAME_free
	.globl	X509_NAME_dup
	.type	X509_NAME_dup, @function
X509_NAME_dup:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_NAME_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	X509_NAME_dup, .-X509_NAME_dup
	.section	.rodata
.LC4:
	.string	"../crypto/x509/x_name.c"
	.text
	.type	x509_name_ex_new, @function
x509_name_ex_new:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC4(%rip), %rax
	movl	$92, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L53:
	call	BUF_MEM_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L55:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L52
.L54:
	cmpq	$0, -8(%rbp)
	je	.L56
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	.LC4(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L56:
	movl	$0, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	x509_name_ex_new, .-x509_name_ex_new
	.type	x509_name_ex_free, @function
x509_name_ex_free:
.LFB635:
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
	cmpq	$0, -40(%rbp)
	je	.L61
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	X509_NAME_ENTRY_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC4(%rip), %rcx
	movl	$126, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L57
.L61:
	nop
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	x509_name_ex_free, .-x509_name_ex_free
	.type	local_sk_X509_NAME_ENTRY_free, @function
local_sk_X509_NAME_ENTRY_free:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	local_sk_X509_NAME_ENTRY_free, .-local_sk_X509_NAME_ENTRY_free
	.type	local_sk_X509_NAME_ENTRY_pop_free, @function
local_sk_X509_NAME_ENTRY_pop_free:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	X509_NAME_ENTRY_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	local_sk_X509_NAME_ENTRY_pop_free, .-local_sk_X509_NAME_ENTRY_pop_free
	.type	x509_name_ex_d2i, @function
x509_name_ex_d2i:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -116(%rbp)
	movl	%r9d, -120(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -124(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$1048576, -104(%rbp)
	jle	.L65
	movq	$1048576, -104(%rbp)
.L65:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsbl	-124(%rbp), %ebx
	call	X509_NAME_INTERNAL_it
	movq	%rax, %rcx
	movl	-120(%rbp), %r8d
	movl	-116(%rbp), %edi
	movq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rax
	pushq	24(%rbp)
	pushq	%rbx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ASN1_item_ex_d2i@PLT
	addq	$16, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L66
	movl	-36(%rbp), %eax
	jmp	.L79
.L66:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	x509_name_ex_free
.L68:
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	x509_name_ex_new
	testl	%eax, %eax
	je	.L80
	movq	-64(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	je	.L81
	movq	-64(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$0, -20(%rbp)
	jmp	.L72
.L76:
	movq	-72(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_value
	movq	%rax, -48(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L73
.L75:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L82
	movl	$0, %edi
	call	ossl_check_X509_NAME_ENTRY_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rax, %rcx
	movl	-24(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	OPENSSL_sk_set@PLT
	addl	$1, -24(%rbp)
.L73:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L75
	addl	$1, -20(%rbp)
.L72:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_num
	cmpl	%eax, -20(%rbp)
	jl	.L76
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	x509_name_canon
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L83
	movq	-72(%rbp), %rax
	leaq	local_sk_X509_NAME_ENTRY_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_pop_free
	movq	-80(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-36(%rbp), %eax
	jmp	.L79
.L80:
	nop
	jmp	.L70
.L81:
	nop
	jmp	.L70
.L82:
	nop
	jmp	.L70
.L83:
	nop
.L70:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L78
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
.L78:
	movq	-72(%rbp), %rax
	leaq	local_sk_X509_NAME_ENTRY_pop_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_pop_free
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L79:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	x509_name_ex_d2i, .-x509_name_ex_d2i
	.type	x509_name_ex_i2d, @function
x509_name_ex_i2d:
.LFB639:
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
	movl	%r8d, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L85
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509_name_encode
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L86
	movl	-12(%rbp), %eax
	jmp	.L87
.L86:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509_name_canon
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L85
	movl	$-1, %eax
	jmp	.L87
.L85:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	%eax, -12(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L88
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L88:
	movl	-12(%rbp), %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	x509_name_ex_i2d, .-x509_name_ex_i2d
	.type	x509_name_encode, @function
x509_name_encode:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -32(%rbp)
	call	sk_STACK_OF_X509_NAME_ENTRY_new_null
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L102
	movl	$0, -28(%rbp)
	jmp	.L92
.L97:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -32(%rbp)
	je	.L93
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L103
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_push
	testl	%eax, %eax
	jne	.L95
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L91
.L95:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -32(%rbp)
.L93:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L104
	addl	$1, -28(%rbp)
.L92:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L97
	call	X509_NAME_INTERNAL_it
	movq	%rax, %rdx
	leaq	-56(%rbp), %rax
	movl	$-1, %r8d
	movl	$-1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L98
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L99
.L98:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	call	X509_NAME_INTERNAL_it
	movq	%rax, %rdx
	leaq	-64(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movl	$-1, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movq	-56(%rbp), %rax
	leaq	local_sk_X509_NAME_ENTRY_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_pop_free
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	movl	-36(%rbp), %eax
	jmp	.L101
.L102:
	nop
	jmp	.L91
.L103:
	nop
	jmp	.L91
.L104:
	nop
.L91:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$282, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L99:
	movq	-56(%rbp), %rax
	leaq	local_sk_X509_NAME_ENTRY_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_pop_free
	movl	$-1, %eax
.L101:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	x509_name_encode, .-x509_name_encode
	.type	x509_name_ex_print, @function
x509_name_ex_print:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	testl	%eax, %eax
	jg	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movl	$2, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	x509_name_ex_print, .-x509_name_ex_print
	.type	x509_name_canon, @function
x509_name_canon:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC4(%rip), %rcx
	movl	$318, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L109
	movq	-88(%rbp), %rax
	movl	$0, 32(%rax)
	movl	$1, %eax
	jmp	.L124
.L109:
	call	sk_STACK_OF_X509_NAME_ENTRY_new_null
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L112
.L111:
	movl	$0, -36(%rbp)
	jmp	.L113
.L121:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -40(%rbp)
	je	.L114
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L125
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_push
	testl	%eax, %eax
	jne	.L116
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$338, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L112
.L116:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -40(%rbp)
.L114:
	call	X509_NAME_ENTRY_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L117
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$345, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L112
.L117:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L118
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$350, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524296, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L112
.L118:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_string_canon
	testl	%eax, %eax
	je	.L126
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L120
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$356, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L112
.L120:
	movq	$0, -32(%rbp)
	addl	$1, -36(%rbp)
.L113:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -36(%rbp)
	jl	.L121
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_name_canon
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	js	.L127
	movq	-88(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	-88(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	leaq	.LC4(%rip), %rcx
	movl	$368, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L128
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 24(%rax)
	leaq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_name_canon
	movl	$1, -44(%rbp)
	jmp	.L112
.L125:
	nop
	jmp	.L112
.L126:
	nop
	jmp	.L112
.L127:
	nop
	jmp	.L112
.L128:
	nop
.L112:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
	leaq	local_sk_X509_NAME_ENTRY_pop_free(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_STACK_OF_X509_NAME_ENTRY_pop_free
	movl	-44(%rbp), %eax
.L124:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	x509_name_canon, .-x509_name_canon
	.type	asn1_string_canon, @function
asn1_string_canon:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	ASN1_tag2bit@PLT
	andl	$10582, %eax
	testq	%rax, %rax
	jne	.L130
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_copy@PLT
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movl	$1, %eax
	jmp	.L132
.L130:
	movq	-40(%rbp), %rax
	movl	$12, 4(%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_STRING_to_UTF8@PLT
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L132
.L133:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L134
.L136:
	addq	$1, -16(%rbp)
	subl	$1, -20(%rbp)
.L134:
	cmpl	$0, -20(%rbp)
	jle	.L135
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L136
.L135:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L137
.L139:
	subq	$1, -8(%rbp)
	subl	$1, -20(%rbp)
.L137:
	cmpl	$0, -20(%rbp)
	jle	.L138
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L139
.L138:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L140
.L144:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L141
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addl	$1, -24(%rbp)
	jmp	.L140
.L141:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L142
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
.L143:
	addq	$1, -16(%rbp)
	addl	$1, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L143
	jmp	.L140
.L142:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
	addl	$1, -24(%rbp)
.L140:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L144
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	asn1_string_canon, .-asn1_string_canon
	.type	i2d_name_canon, @function
i2d_name_canon:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L146
.L150:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	call	X509_NAME_ENTRIES_it
	movq	%rax, %rdx
	movq	-48(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	$-1, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L147
	movl	$2147483647, %eax
	subl	-20(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L148
.L147:
	movl	$-1, %eax
	jmp	.L151
.L148:
	movl	-20(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L146:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L150
	movl	-8(%rbp), %eax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	i2d_name_canon, .-i2d_name_canon
	.globl	X509_NAME_set
	.type	X509_NAME_set, @function
X509_NAME_set:
.LFB645:
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
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L153
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L154
.L153:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L155
	movl	$0, %eax
	jmp	.L154
.L155:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	X509_NAME_set, .-X509_NAME_set
	.section	.rodata
.LC5:
	.string	", "
	.text
	.globl	X509_NAME_print
	.type	X509_NAME_print, @function
X509_NAME_print:
.LFB646:
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
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L157
	movl	$0, %eax
	jmp	.L158
.L157:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L159
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L158
.L159:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L167:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L160
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isupper@PLT
	testl	%eax, %eax
	je	.L160
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L161
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isupper@PLT
	testl	%eax, %eax
	je	.L160
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L161
.L160:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L162
.L161:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -28(%rbp)
	jne	.L169
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L162
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	jne	.L170
.L162:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L171
	addq	$1, -8(%rbp)
	jmp	.L167
.L171:
	nop
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$538, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L158
.L169:
	nop
	jmp	.L164
.L170:
	nop
.L164:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$541, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$542, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	X509_NAME_print, .-X509_NAME_print
	.globl	X509_NAME_get0_der
	.type	X509_NAME_get0_der, @function
X509_NAME_get0_der:
.LFB647:
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
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	testl	%eax, %eax
	jg	.L173
	movl	$0, %eax
	jmp	.L174
.L173:
	cmpq	$0, -16(%rbp)
	je	.L175
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L175:
	cmpq	$0, -24(%rbp)
	je	.L176
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L176:
	movl	$1, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	X509_NAME_get0_der, .-X509_NAME_get0_der
	.section	.rodata
.LC6:
	.string	"X509_NAME_ENTRY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.8, @object
	.size	local_it.8, 56
local_it.8:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_NAME_ENTRY_seq_tt
	.quad	2
	.quad	0
	.quad	24
	.quad	.LC6
	.section	.rodata
.LC7:
	.string	"X509_NAME_ENTRIES"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	0
	.zero	7
	.quad	-1
	.quad	X509_NAME_ENTRIES_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.section	.rodata
.LC8:
	.string	"X509_NAME_INTERNAL"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	0
	.zero	7
	.quad	-1
	.quad	X509_NAME_INTERNAL_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.section	.rodata
.LC9:
	.string	"X509_NAME"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	4
	.zero	7
	.quad	16
	.quad	0
	.quad	0
	.quad	x509_name_ff
	.quad	0
	.quad	.LC9
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 17
__func__.4:
	.string	"x509_name_ex_new"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"x509_name_ex_d2i"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"x509_name_encode"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"x509_name_canon"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"X509_NAME_print"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
