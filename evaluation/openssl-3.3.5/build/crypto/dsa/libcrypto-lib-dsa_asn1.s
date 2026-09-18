	.file	"dsa_asn1.c"
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
	.type	dsa_cb, @function
dsa_cb:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L6
	call	DSA_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movl	$2, %eax
	jmp	.L8
.L7:
	movl	$0, %eax
	jmp	.L8
.L6:
	cmpl	$2, -4(%rbp)
	jne	.L9
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$2, %eax
	jmp	.L8
.L9:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	dsa_cb, .-dsa_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	DSAPrivateKey_aux, @object
	.size	DSAPrivateKey_aux, 48
DSAPrivateKey_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	dsa_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC0:
	.string	"version"
.LC1:
	.string	"params.p"
.LC2:
	.string	"params.q"
.LC3:
	.string	"params.g"
.LC4:
	.string	"pub_key"
.LC5:
	.string	"priv_key"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	DSAPrivateKey_seq_tt, @object
	.size	DSAPrivateKey_seq_tt, 240
DSAPrivateKey_seq_tt:
	.quad	4096
	.quad	0
	.quad	4
	.quad	.LC0
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	104
	.quad	.LC4
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	112
	.quad	.LC5
	.quad	CBIGNUM_it
	.text
	.type	DSAPrivateKey_it, @function
DSAPrivateKey_it:
.LFB453:
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
.LFE453:
	.size	DSAPrivateKey_it, .-DSAPrivateKey_it
	.globl	d2i_DSAPrivateKey
	.type	d2i_DSAPrivateKey, @function
d2i_DSAPrivateKey:
.LFB454:
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
	call	DSAPrivateKey_it
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
.LFE454:
	.size	d2i_DSAPrivateKey, .-d2i_DSAPrivateKey
	.globl	i2d_DSAPrivateKey
	.type	i2d_DSAPrivateKey, @function
i2d_DSAPrivateKey:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DSAPrivateKey_it
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
.LFE455:
	.size	i2d_DSAPrivateKey, .-i2d_DSAPrivateKey
	.section	.data.rel.ro.local
	.align 32
	.type	DSAparams_aux, @object
	.size	DSAparams_aux, 48
DSAparams_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	dsa_cb
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	DSAparams_seq_tt, @object
	.size	DSAparams_seq_tt, 120
DSAparams_seq_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	BIGNUM_it
	.text
	.type	DSAparams_it, @function
DSAparams_it:
.LFB456:
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
.LFE456:
	.size	DSAparams_it, .-DSAparams_it
	.globl	d2i_DSAparams
	.type	d2i_DSAparams, @function
d2i_DSAparams:
.LFB457:
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
	call	DSAparams_it
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
.LFE457:
	.size	d2i_DSAparams, .-d2i_DSAparams
	.globl	i2d_DSAparams
	.type	i2d_DSAparams, @function
i2d_DSAparams:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DSAparams_it
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
.LFE458:
	.size	i2d_DSAparams, .-i2d_DSAparams
	.section	.data.rel.ro.local
	.align 32
	.type	DSAPublicKey_aux, @object
	.size	DSAPublicKey_aux, 48
DSAPublicKey_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	dsa_cb
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	DSAPublicKey_seq_tt, @object
	.size	DSAPublicKey_seq_tt, 160
DSAPublicKey_seq_tt:
	.quad	0
	.quad	0
	.quad	104
	.quad	.LC4
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	BIGNUM_it
	.text
	.type	DSAPublicKey_it, @function
DSAPublicKey_it:
.LFB459:
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
.LFE459:
	.size	DSAPublicKey_it, .-DSAPublicKey_it
	.globl	d2i_DSAPublicKey
	.type	d2i_DSAPublicKey, @function
d2i_DSAPublicKey:
.LFB460:
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
	call	DSAPublicKey_it
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
.LFE460:
	.size	d2i_DSAPublicKey, .-d2i_DSAPublicKey
	.globl	i2d_DSAPublicKey
	.type	i2d_DSAPublicKey, @function
i2d_DSAPublicKey:
.LFB461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DSAPublicKey_it
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
.LFE461:
	.size	i2d_DSAPublicKey, .-i2d_DSAPublicKey
	.globl	DSAparams_dup
	.type	DSAparams_dup, @function
DSAparams_dup:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	DSAparams_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	DSAparams_dup, .-DSAparams_dup
	.section	.rodata
.LC6:
	.string	"DSA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	DSAPrivateKey_seq_tt
	.quad	6
	.quad	DSAPrivateKey_aux
	.quad	200
	.quad	.LC6
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	DSAparams_seq_tt
	.quad	3
	.quad	DSAparams_aux
	.quad	200
	.quad	.LC6
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	DSAPublicKey_seq_tt
	.quad	4
	.quad	DSAPublicKey_aux
	.quad	200
	.quad	.LC6
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
