	.file	"dh_rfc5114.c"
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
	.globl	DH_get_1024_160
	.type	DH_get_1024_160, @function
DH_get_1024_160:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	DH_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	ossl_bignum_dh1024_160_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	ossl_bignum_dh1024_160_g@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	ossl_bignum_dh1024_160_q@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
	jmp	.L7
.L9:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	DH_get_1024_160, .-DH_get_1024_160
	.globl	DH_get_2048_224
	.type	DH_get_2048_224, @function
DH_get_2048_224:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	DH_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	ossl_bignum_dh2048_224_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	ossl_bignum_dh2048_224_g@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	ossl_bignum_dh2048_224_q@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L14
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
	jmp	.L12
.L14:
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	DH_get_2048_224, .-DH_get_2048_224
	.globl	DH_get_2048_256
	.type	DH_get_2048_256, @function
DH_get_2048_256:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	DH_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	ossl_bignum_dh2048_256_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	ossl_bignum_dh2048_256_g@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	ossl_bignum_dh2048_256_q@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
	jmp	.L17
.L19:
	movq	-8(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	DH_get_2048_256, .-DH_get_2048_256
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
