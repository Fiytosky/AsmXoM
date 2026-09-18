	.file	"rand_meth.c"
	.text
	.type	drbg_add, @function
drbg_add:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	cmpl	$0, -28(%rbp)
	jg	.L3
.L2:
	movl	$0, %eax
	jmp	.L4
.L3:
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_reseed@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	drbg_add, .-drbg_add
	.type	drbg_seed, @function
drbg_seed:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-12(%rbp), %xmm1
	movq	%xmm1, %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	drbg_add
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	drbg_seed, .-drbg_seed
	.type	drbg_status, @function
drbg_status:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_get_state@PLT
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	drbg_status, .-drbg_status
	.type	drbg_bytes, @function
drbg_bytes:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, %edi
	call	RAND_get0_public@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	drbg_bytes, .-drbg_bytes
	.globl	ossl_rand_meth
	.section	.data.rel.local,"aw"
	.align 32
	.type	ossl_rand_meth, @object
	.size	ossl_rand_meth, 48
ossl_rand_meth:
	.quad	drbg_seed
	.quad	drbg_bytes
	.quad	0
	.quad	drbg_add
	.quad	drbg_bytes
	.quad	drbg_status
	.text
	.globl	RAND_OpenSSL
	.type	RAND_OpenSSL, @function
RAND_OpenSSL:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ossl_rand_meth@GOTPCREL(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	RAND_OpenSSL, .-RAND_OpenSSL
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
