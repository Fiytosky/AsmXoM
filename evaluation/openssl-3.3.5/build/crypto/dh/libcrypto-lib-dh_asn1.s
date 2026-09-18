	.file	"dh_asn1.c"
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
	.type	dh_cb, @function
dh_cb:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L6
	call	DH_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movl	$2, %eax
	jmp	.L8
.L7:
	movl	$0, %eax
	jmp	.L8
.L6:
	cmpl	$2, -20(%rbp)
	jne	.L9
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$2, %eax
	jmp	.L8
.L9:
	cmpl	$5, -20(%rbp)
	jne	.L10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	DH_clear_flags@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DH_set_flags@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_cache_named_group@PLT
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
.L10:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	dh_cb, .-dh_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	DHparams_aux, @object
	.size	DHparams_aux, 48
DHparams_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	dh_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC0:
	.string	"params.p"
.LC1:
	.string	"params.g"
.LC2:
	.string	"length"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	DHparams_seq_tt, @object
	.size	DHparams_seq_tt, 120
DHparams_seq_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC0
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC1
	.quad	BIGNUM_it
	.quad	4097
	.quad	0
	.quad	104
	.quad	.LC2
	.quad	ZINT32_it
	.text
	.globl	DHparams_it
	.type	DHparams_it, @function
DHparams_it:
.LFB414:
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
.LFE414:
	.size	DHparams_it, .-DHparams_it
	.globl	d2i_DHparams
	.type	d2i_DHparams, @function
d2i_DHparams:
.LFB415:
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
	call	DHparams_it@PLT
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
.LFE415:
	.size	d2i_DHparams, .-d2i_DHparams
	.globl	i2d_DHparams
	.type	i2d_DHparams, @function
i2d_DHparams:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DHparams_it@PLT
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
.LFE416:
	.size	i2d_DHparams, .-i2d_DHparams
	.section	.rodata
.LC3:
	.string	"seed"
.LC4:
	.string	"counter"
	.section	.data.rel.ro
	.align 32
	.type	DHvparams_seq_tt, @object
	.size	DHvparams_seq_tt, 80
DHvparams_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	ASN1_BIT_STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	BIGNUM_it
	.text
	.type	DHvparams_it, @function
DHvparams_it:
.LFB417:
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
.LFE417:
	.size	DHvparams_it, .-DHvparams_it
	.section	.rodata
.LC5:
	.string	"p"
.LC6:
	.string	"g"
.LC7:
	.string	"q"
.LC8:
	.string	"j"
.LC9:
	.string	"vparams"
	.section	.data.rel.ro
	.align 32
	.type	DHxparams_seq_tt, @object
	.size	DHxparams_seq_tt, 200
DHxparams_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC6
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC7
	.quad	BIGNUM_it
	.quad	1
	.quad	0
	.quad	24
	.quad	.LC8
	.quad	BIGNUM_it
	.quad	1
	.quad	0
	.quad	32
	.quad	.LC9
	.quad	DHvparams_it
	.text
	.type	DHxparams_it, @function
DHxparams_it:
.LFB418:
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
.LFE418:
	.size	DHxparams_it, .-DHxparams_it
	.globl	d2i_int_dhx
	.type	d2i_int_dhx, @function
d2i_int_dhx:
.LFB419:
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
	call	DHxparams_it
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
.LFE419:
	.size	d2i_int_dhx, .-d2i_int_dhx
	.globl	i2d_int_dhx
	.type	i2d_int_dhx, @function
i2d_int_dhx:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DHxparams_it
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
.LFE420:
	.size	i2d_int_dhx, .-i2d_int_dhx
	.section	.rodata
.LC10:
	.string	"../crypto/dh/dh_asn1.c"
	.text
	.globl	d2i_DHxparams
	.type	d2i_DHxparams, @function
d2i_DHxparams:
.LFB421:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	DH_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_int_dhx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L28
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
	jmp	.L27
.L28:
	cmpq	$0, -40(%rbp)
	je	.L29
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L29:
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_set0_j@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_set_validate_params@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC10(%rip), %rcx
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.L30:
	leaq	.LC10(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$129, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	DH_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	DH_set_flags@PLT
	movq	-16(%rbp), %rax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	d2i_DHxparams, .-d2i_DHxparams
	.globl	i2d_DHxparams
	.type	i2d_DHxparams, @function
i2d_DHxparams:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -120(%rbp)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	leaq	-64(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-64(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_get0_pqg@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	-124(%rbp), %rcx
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_get_validate_params@PLT
	movq	-120(%rbp), %rax
	movl	%eax, -112(%rbp)
	movl	-124(%rbp), %eax
	cmpl	$-1, %eax
	je	.L32
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L32
	movl	-112(%rbp), %eax
	testl	%eax, %eax
	jle	.L32
	movq	$8, -96(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L33
	movl	$0, %eax
	jmp	.L38
.L33:
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L37
.L32:
	movq	$0, -32(%rbp)
.L37:
	movq	-144(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_int_dhx@PLT
	movl	%eax, -4(%rbp)
	jmp	.L36
.L39:
	nop
.L36:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	i2d_DHxparams, .-i2d_DHxparams
	.section	.rodata
.LC11:
	.string	"DHparams"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	DHparams_seq_tt
	.quad	3
	.quad	DHparams_aux
	.quad	208
	.quad	.LC11
	.section	.rodata
.LC12:
	.string	"int_dhvparams"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	DHvparams_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC12
	.section	.rodata
.LC13:
	.string	"int_dhx942_dh"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	DHxparams_seq_tt
	.quad	5
	.quad	0
	.quad	40
	.quad	.LC13
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
