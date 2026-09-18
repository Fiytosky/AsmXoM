	.file	"ffc_dh.c"
	.text
	.section	.rodata
.LC0:
	.string	"ffdhe2048"
.LC1:
	.string	"ffdhe3072"
.LC2:
	.string	"ffdhe4096"
.LC3:
	.string	"ffdhe6144"
.LC4:
	.string	"ffdhe8192"
.LC5:
	.string	"modp_1536"
.LC6:
	.string	"modp_2048"
.LC7:
	.string	"modp_3072"
.LC8:
	.string	"modp_4096"
.LC9:
	.string	"modp_6144"
.LC10:
	.string	"modp_8192"
.LC11:
	.string	"dh_1024_160"
.LC12:
	.string	"dh_2048_224"
.LC13:
	.string	"dh_2048_256"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	dh_named_groups, @object
	.size	dh_named_groups, 672
dh_named_groups:
	.quad	.LC0
	.long	1126
	.long	2048
	.long	225
	.zero	4
	.quad	ossl_bignum_ffdhe2048_p
	.quad	ossl_bignum_ffdhe2048_q
	.quad	ossl_bignum_const_2
	.quad	.LC1
	.long	1127
	.long	3072
	.long	275
	.zero	4
	.quad	ossl_bignum_ffdhe3072_p
	.quad	ossl_bignum_ffdhe3072_q
	.quad	ossl_bignum_const_2
	.quad	.LC2
	.long	1128
	.long	4096
	.long	325
	.zero	4
	.quad	ossl_bignum_ffdhe4096_p
	.quad	ossl_bignum_ffdhe4096_q
	.quad	ossl_bignum_const_2
	.quad	.LC3
	.long	1129
	.long	6144
	.long	375
	.zero	4
	.quad	ossl_bignum_ffdhe6144_p
	.quad	ossl_bignum_ffdhe6144_q
	.quad	ossl_bignum_const_2
	.quad	.LC4
	.long	1130
	.long	8192
	.long	400
	.zero	4
	.quad	ossl_bignum_ffdhe8192_p
	.quad	ossl_bignum_ffdhe8192_q
	.quad	ossl_bignum_const_2
	.quad	.LC5
	.long	1212
	.long	1536
	.long	200
	.zero	4
	.quad	ossl_bignum_modp_1536_p
	.quad	ossl_bignum_modp_1536_q
	.quad	ossl_bignum_const_2
	.quad	.LC6
	.long	1213
	.long	2048
	.long	225
	.zero	4
	.quad	ossl_bignum_modp_2048_p
	.quad	ossl_bignum_modp_2048_q
	.quad	ossl_bignum_const_2
	.quad	.LC7
	.long	1214
	.long	3072
	.long	275
	.zero	4
	.quad	ossl_bignum_modp_3072_p
	.quad	ossl_bignum_modp_3072_q
	.quad	ossl_bignum_const_2
	.quad	.LC8
	.long	1215
	.long	4096
	.long	325
	.zero	4
	.quad	ossl_bignum_modp_4096_p
	.quad	ossl_bignum_modp_4096_q
	.quad	ossl_bignum_const_2
	.quad	.LC9
	.long	1216
	.long	6144
	.long	375
	.zero	4
	.quad	ossl_bignum_modp_6144_p
	.quad	ossl_bignum_modp_6144_q
	.quad	ossl_bignum_const_2
	.quad	.LC10
	.long	1217
	.long	8192
	.long	400
	.zero	4
	.quad	ossl_bignum_modp_8192_p
	.quad	ossl_bignum_modp_8192_q
	.quad	ossl_bignum_const_2
	.quad	.LC11
	.long	1
	.long	1024
	.long	0
	.zero	4
	.quad	ossl_bignum_dh1024_160_p
	.quad	ossl_bignum_dh1024_160_q
	.quad	ossl_bignum_dh1024_160_g
	.quad	.LC12
	.long	2
	.long	2048
	.long	0
	.zero	4
	.quad	ossl_bignum_dh2048_224_p
	.quad	ossl_bignum_dh2048_224_q
	.quad	ossl_bignum_dh2048_224_g
	.quad	.LC13
	.long	3
	.long	2048
	.long	0
	.zero	4
	.quad	ossl_bignum_dh2048_256_p
	.quad	ossl_bignum_dh2048_256_q
	.quad	ossl_bignum_dh2048_256_g
	.text
	.globl	ossl_ffc_name_to_dh_named_group
	.type	ossl_ffc_name_to_dh_named_group, @function
ossl_ffc_name_to_dh_named_group:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L5:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dh_named_groups(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L3
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	dh_named_groups(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L4
.L3:
	addq	$1, -8(%rbp)
.L2:
	cmpq	$13, -8(%rbp)
	jbe	.L5
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_ffc_name_to_dh_named_group, .-ossl_ffc_name_to_dh_named_group
	.globl	ossl_ffc_uid_to_dh_named_group
	.type	ossl_ffc_uid_to_dh_named_group, @function
ossl_ffc_uid_to_dh_named_group:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L7
.L10:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dh_named_groups(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	dh_named_groups(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L9
.L8:
	addq	$1, -8(%rbp)
.L7:
	cmpq	$13, -8(%rbp)
	jbe	.L10
	movl	$0, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ossl_ffc_uid_to_dh_named_group, .-ossl_ffc_uid_to_dh_named_group
	.globl	ossl_ffc_numbers_to_dh_named_group
	.type	ossl_ffc_numbers_to_dh_named_group, @function
ossl_ffc_numbers_to_dh_named_group:
.LFB322:
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
	movq	$0, -8(%rbp)
	jmp	.L12
.L16:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	24+dh_named_groups(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	40+dh_named_groups(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L13
	cmpq	$0, -32(%rbp)
	je	.L14
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	32+dh_named_groups(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L13
.L14:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	dh_named_groups(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L15
.L13:
	addq	$1, -8(%rbp)
.L12:
	cmpq	$13, -8(%rbp)
	jbe	.L16
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	ossl_ffc_numbers_to_dh_named_group, .-ossl_ffc_numbers_to_dh_named_group
	.globl	ossl_ffc_named_group_get_uid
	.type	ossl_ffc_named_group_get_uid, @function
ossl_ffc_named_group_get_uid:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	ossl_ffc_named_group_get_uid, .-ossl_ffc_named_group_get_uid
	.globl	ossl_ffc_named_group_get_name
	.type	ossl_ffc_named_group_get_name, @function
ossl_ffc_named_group_get_name:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	ossl_ffc_named_group_get_name, .-ossl_ffc_named_group_get_name
	.globl	ossl_ffc_named_group_get_keylength
	.type	ossl_ffc_named_group_get_keylength, @function
ossl_ffc_named_group_get_keylength:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	ossl_ffc_named_group_get_keylength, .-ossl_ffc_named_group_get_keylength
	.globl	ossl_ffc_named_group_get_q
	.type	ossl_ffc_named_group_get_q, @function
ossl_ffc_named_group_get_q:
.LFB326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	ossl_ffc_named_group_get_q, .-ossl_ffc_named_group_get_q
	.globl	ossl_ffc_named_group_set
	.type	ossl_ffc_named_group_set, @function
ossl_ffc_named_group_set:
.LFB327:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	cmpq	$0, -16(%rbp)
	jne	.L31
.L30:
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_set0_pqg@PLT
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	ossl_ffc_named_group_set, .-ossl_ffc_named_group_set
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
